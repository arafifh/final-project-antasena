<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('absensis', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('nrp');
            $table->enum('department', [
                'fisika',
                'matematika',
                'statistika',
                'kimia',
                'bilogi',
                'aktuaria',
                'teknik mesin',
                'teknik kimia',
                'teknik pangan',
                'teknik fisika',
                'teknik industri',
                'teknik material',
                'teknik sipil',
                'arsitektur',
                'teknik lingkungan',
                'pwk',
                'teknik geomatika',
                'teknik geofisika',
                'teknik perkapalan',
                'sistem perkapalan',
                'teknik kelautan',
                'transportasi laut',
                'teknik elektro',
                'teknik biomedik',
                'teknik komputer',
                'teknik informatika',
                'sistem informasi',
                'teknologi informasi',
                'desain produk',
                'desain interior',
                'dkv',
                'managemen bisnis',
                'studi pembangunan',
                'statistika bisnis',
                'teknik manufaktur',
                'teknik konversi energi',
                'teknik otomasi',
                'teknik kimia industri',
                'teknik instrumentasi',
            ]);
            $table->enum('division', [
                'TECHNICAL',
                'STRD',
                'OF',
                'COMM'
            ]);
            $table->enum('subdivision', [
                'Vehicle Dynamics',
                'Electronical & Powertrain System',
                'Body & Frame',
                'Science & Technology Research Development',
                'Sponsorship & Relation',
                'Administration & Accommodation',
                'Creative',
                'Content Strategist',
                'Events and Media Relation',
                'Web Developer'
            ]);
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('absensis');
    }
};
