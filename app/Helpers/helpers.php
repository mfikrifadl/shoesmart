<?php
//helper mata uang
if (!function_exists('rupiah')) {
    function rupiah($nilai, $pecahan = 0)
    {
        return number_format($nilai, $pecahan, ',', '.');
    }
}
