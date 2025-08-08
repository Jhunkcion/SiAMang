<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\PendaftaranMagang;
use Illuminate\Support\Facades\Storage;

class PendaftaranMagangController extends Controller
{
    /**
     * Serve the surat pengantar PDF inline for preview.
     */
    public function previewSuratPengantar(PendaftaranMagang $pendaftaran)
    {
        if (!$pendaftaran->surat_pengantar || !Storage::disk('public')->exists($pendaftaran->surat_pengantar)) {
            abort(404, 'File not found');
        }

        $fileContent = Storage::disk('public')->get($pendaftaran->surat_pengantar);
        $fileName = basename($pendaftaran->surat_pengantar);

        return response($fileContent, 200, [
            'Content-Type' => 'application/pdf',
            'Content-Disposition' => 'inline; filename="' . $fileName . '"',
            'Content-Length' => strlen($fileContent),
        ]);
    }
}
