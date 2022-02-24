class Bowling {
    static int NBQUILLES=10;

    int _nbframes=0;
    int _scoreTotal=0;
    int _nbtir=0;
    int _sparescore=0;

    List<int> _framesScore=List.generate(10, (index)=> 0);
    List<String> _specialShoot=List.generate(10, (index)=>'');

    roll(int pinsDown) {
        _nbtir++;
        if (_nbframes!=0) _sparescore = _specialShoot[_nbframes-1] == 'spare' ? _framesScore[_nbframes]:0;
        _framesScore[_nbframes]=_framesScore[_nbframes]+pinsDown;

        if (_framesScore[_nbframes]==NBQUILLES){
            if (_nbtir==1){
                _specialShoot[_nbframes]='strike';
                _scoreTotal=_scoreTotal+_framesScore[_nbframes];
            }else if (_nbtir==2 && _specialShoot[_nbframes] == ''){
                _specialShoot[_nbframes]='spare';
                _scoreTotal=_scoreTotal+_framesScore[_nbframes];
            }
        }else if (_nbtir==2){
            if (_nbframes!=0){
                if (_specialShoot[_nbframes-1]=='strike'){
                    _scoreTotal=_scoreTotal+(_framesScore[_nbframes]*2);
                }else if (_specialShoot[_nbframes-1]=='spare'){
                    _scoreTotal=_scoreTotal+_framesScore[_nbframes]+_sparescore;
                }else
                    _scoreTotal=_scoreTotal+_framesScore[_nbframes];
            }else
                _scoreTotal=_scoreTotal+_framesScore[_nbframes];


        }

        if (_nbtir==2){
            _nbtir=0;
            _nbframes++;
        }
    }

    score() {
        _nbtir=0;
        _nbframes=0;
        _framesScore.clear();
        return _scoreTotal;
    }
}
