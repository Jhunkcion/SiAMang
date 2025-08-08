<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up()
    {
        Schema::table('anggota_pendaftaran', function (Blueprint $table) {
            $table->integer('urutan')->nullable()->after('no_hp_anggota')->comment('Urutan anggota untuk reorderable feature');
        });
    }

    public function down()
    {
        Schema::table('anggota_pendaftaran', function (Blueprint $table) {
            $table->dropColumn('urutan');
        });
    }
};