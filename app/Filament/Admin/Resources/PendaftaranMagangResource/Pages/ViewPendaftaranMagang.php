<?php

namespace App\Filament\Admin\Resources\PendaftaranMagangResource\Pages;

use App\Filament\Admin\Resources\PendaftaranMagangResource;
use Filament\Actions;
use Filament\Notifications\Notification;
use Filament\Resources\Pages\ViewRecord;
use Illuminate\Support\Facades\Storage;

class ViewPendaftaranMagang extends ViewRecord
{
    protected static string $resource = PendaftaranMagangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\EditAction::make(),
            Actions\DeleteAction::make(),
            
            // Tombol Terima
            Actions\Action::make('terima')
                ->label('Terima Pendaftaran')
                ->icon('heroicon-o-check')
                ->color('success')
                ->visible(fn ($record) => $record->status === 'pending')
                ->requiresConfirmation()
                ->modalHeading('Terima Pendaftaran Magang')
                ->modalDescription('Apakah Anda yakin ingin menerima pendaftaran magang ini?')
                ->modalSubmitActionLabel('Ya, Terima')
                ->action(function () {
                    $this->record->update(['status' => 'diterima']);
                    
                    // Kirim email ke user (asumsikan fungsi ini ada di model PendaftaranMagang)
                    $this->record->sendStatusNotification('diterima');
                    
                    Notification::make()
                        ->success()
                        ->title('Pendaftaran telah diterima')
                        ->send();
                }),
            
            // Tombol Tolak
            Actions\Action::make('tolak')
                ->label('Tolak Pendaftaran')
                ->icon('heroicon-o-x-mark')
                ->color('danger')
                ->visible(fn ($record) => $record->status === 'pending')
                ->requiresConfirmation()
                ->form([
                    \Filament\Forms\Components\Textarea::make('alasan_penolakan')
                        ->label('Alasan Penolakan')
                        ->required(),
                ])
                ->modalHeading('Tolak Pendaftaran Magang')
                ->modalDescription('Harap berikan alasan penolakan pendaftaran ini')
                ->modalSubmitActionLabel('Tolak Pendaftaran')
                ->action(function (array $data) {
                    $this->record->update([
                        'status' => 'ditolak',
                        'alasan_penolakan' => $data['alasan_penolakan'],
                    ]);
                    
                    // Kirim email ke user dengan alasan penolakan
                    $this->record->sendStatusNotification('ditolak', $data['alasan_penolakan']);
                    
                    Notification::make()
                        ->success()
                        ->title('Pendaftaran telah ditolak')
                        ->send();
                }),
                
            Actions\Action::make('previewSurat')
                ->label('Lihat Dokumen')
                ->icon('heroicon-o-eye')
                ->color('primary')
                ->url(fn ($record) => $record->surat_pengantar ? route('admin.pendaftaran.previewSuratPengantar', $record) : '#')
                ->openUrlInNewTab()
                ->visible(fn ($record) => $record->surat_pengantar),
                
            // Tombol Print Detail
            Actions\Action::make('printDetail')
                ->label('Print Detail')
                ->icon('heroicon-o-printer')
                ->color('gray')
                ->openUrlInNewTab()
                ->url(fn ($record) => route('pendaftaran.print', $record)),

            // Tombol Print Bulanan
            Actions\Action::make('printMonthly')
                ->label('Print Bulanan')
                ->icon('heroicon-o-calendar')
                ->color('primary')
                ->form([
                    \Filament\Forms\Components\TextInput::make('year')
                        ->label('Tahun')
                        ->required()
                        ->default(date('Y'))
                        ->numeric()
                        ->minValue(2000)
                        ->maxValue(date('Y')),
                    \Filament\Forms\Components\Select::make('month')
                        ->label('Bulan')
                        ->required()
                        ->options([
                            '01' => 'Januari',
                            '02' => 'Februari',
                            '03' => 'Maret',
                            '04' => 'April',
                            '05' => 'Mei',
                            '06' => 'Juni',
                            '07' => 'Juli',
                            '08' => 'Agustus',
                            '09' => 'September',
                            '10' => 'Oktober',
                            '11' => 'November',
                            '12' => 'Desember',
                        ]),
                ])
                ->modal()
                ->openUrlInNewTab()
                ->url(fn (array $data) => route('pendaftaran.printMonthly', [
                    'year' => $data['year'] ?? date('Y'), 
                    'month' => $data['month'] ?? date('m')
                ])),
        ];
    }
}
