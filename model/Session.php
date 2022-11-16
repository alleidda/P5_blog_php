<?php

/**
* Classe qui gére les sessions.
* @author Addiella AMOUZOUN.
*/

namespace Addiella\model;

class Session
{

    public function start()
    {
        session_start();
    }

    public function set($key, $val)
    {
        $_SESSION[$key] = $val;
    }

    public function get($key)
    {
        if (isset($_SESSION[$key])) {
            return $_SESSION[$key];
        }
    }

    public function destroy()
    {
        return session_destroy();
    }
}
