var gulp = require( 'gulp' ),
    shell = require( 'gulp-shell' );


gulp.task( 'latex', shell.task([ 'make -C src']));

gulp.task( 'watch', function(){
	gulp.watch( 'src/tex/**/*.tex', [ 'latex' ]);
	gulp.watch( 'src/assets/packages/**/*.sty', [ 'latex' ]);
	gulp.watch( 'src/assets/classes/**/*.cls', [ 'latex' ]);
});

gulp.task( 'default', [ 'latex', 'watch' ]);
