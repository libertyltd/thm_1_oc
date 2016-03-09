var gulp = require('gulp');
var less = require('gulp-less');
var concat = require('gulp-concat');
var minify = require('gulp-minify-css');
var sourcemaps = require ('gulp-sourcemaps');


gulp.task ('bootstrap', function() {
    gulp.src(['./stylesheet/less/vendor/bootstrap/bootstrap.less'])
        .pipe(sourcemaps.init())
        .pipe(less())
        .pipe(sourcemaps.write('./'))
        .pipe(gulp.dest('./stylesheet/'));
});

gulp.task ('default', function() {
    gulp.run('bootstrap');

    gulp.watch('./stylesheet/less/vendor/bootstrap/**', function (event) {
        gulp.run('bootstrap');
    })
})