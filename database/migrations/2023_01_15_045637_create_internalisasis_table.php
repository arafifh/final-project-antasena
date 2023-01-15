<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('internalisasis', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('nrp');
            $table->enum('department', [
                'Fisika',
                'Matematika',
                'Statistika',
                'Kimia',
                'Biologi',
                'Aktuaria',
                'Teknik Mesin',
                'Teknik Kimia',
                'Teknik Pangan',
                'Teknik Fisika',
                'Teknik Industri',
                'Teknik Material',
                'Teknik Sipil',
                'Arsitektur',
                'Teknik Lingkungan',
                'Perencanaan Wilayah & Kota',
                'Teknik Geomatika',
                'Teknik Geofisika',
                'Teknik Perkapalan',
                'Sistem Perkapalan',
                'Teknik Kelautan',
                'Transportasi Laut',
                'Teknik Elektro',
                'Teknik Biomedik',
                'Teknik Komputer',
                'Teknik Informatika',
                'Sistem Informasi',
                'Teknologi Informasi',
                'Desain Produk',
                'Desain Interior',
                'Desain Komunikasi Visual',
                'Manajemen Bisnis',
                'Studi Pembangunan',
                'Statistika Bisnis',
                'Teknik Manufaktur',
                'Teknik Konversi Energi',
                'Teknik Otomasi',
                'Teknik Kimia Industri',
                'Teknik Instrumentasi',
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
            $table->timestamp('time', $precision = 0);
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
        Schema::dropIfExists('internalisasis');
    }
};
