<?php
    require 'connection.php';

    if(isset($_POST["data"])) {
        $device = $_POST["device"];
        $data = $_POST["data"];

        if($device !== "rpi01" && $device !== "rpi02") {
            exit;
        }

        $separator = "\r\n";
        $line = strtok($data, $separator);

        while ($line !== false) {
            $columns = explode(",", $line);

            if((strlen($columns[1]) === 17) && ($columns[2] != "")) {
                $sql = "INSERT INTO requests (macaddress, macaddress_resolved, ssid, signal_strength, timestamp, device)
                    VALUES ('".mysqli_real_escape_string($link, $columns[1])."',
                        '".mysqli_real_escape_string($link, $columns[0])."',
                        '".mysqli_real_escape_string($link, $columns[2])."',
                        '".mysqli_real_escape_string($link, $columns[4])."',
                        '".mysqli_real_escape_string($link, $columns[3])."',
                        '{$device}')";

                mysqli_query($link, $sql);
            }

            $line = strtok( $separator );
        }
    }
