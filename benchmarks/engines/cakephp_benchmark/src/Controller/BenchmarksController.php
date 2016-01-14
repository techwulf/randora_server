<?php
namespace App\Controller;

use Cake\Core\Configure;
use Cake\Network\Exception\NotFoundException;
use Cake\View\Exception\MissingTemplateException;

class BenchmarksController extends AppController{
    public function index(){
        $this->set([
            'bookmarks' => "B",
            'tags' => "T"
        ]);
    }

    public function blank(){}

    public function fibonacci(){
        $value = $this->request->params["pass"][0];

        $answer = $this->iterative($value);

        $this->set([
            'value' => $value,
            'answer' => $answer
        ]);
    }

    function iterative($n) {
        if ($n < 2) {
            return $n;
        }
        
        $fibPrev = 0;
        $fib = 1;
        foreach (range(1, $n-1) as $i) {
            list($fibPrev, $fib) = array($fib, $fib + $fibPrev);
        }
        
        return $fib;
    }
}
