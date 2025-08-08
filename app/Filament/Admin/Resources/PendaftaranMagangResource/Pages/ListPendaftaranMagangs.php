<?php

namespace App\Filament\Admin\Resources\PendaftaranMagangResource\Pages;

use App\Filament\Admin\Resources\PendaftaranMagangResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;
use Filament\Tables;
use Filament\Actions\Action;

class ListPendaftaranMagangs extends ListRecords
{
    protected static string $resource = PendaftaranMagangResource::class;

    protected function getHeaderActions(): array
    {
        return [
            // Removed CreateAction to disable "New Pendaftaran magang" button
            Action::make('resetPeriodeMagangFilter')
                ->label('Reset Periode Magang')
                ->icon('heroicon-o-x-circle')
                ->action(function () {
                    $this->table->clearFilter('periode_magang');
                }),
        ];
    }
}
