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
        .pipe(minify())
        .pipe(gulp.dest('./stylesheet/'));
});

gulp.task ('custom', function() {
    gulp.src(['./stylesheet/less/custom/**/*.less'])
        .pipe(sourcemaps.init())
        .pipe(less())
        .pipe(concat('custom.css'))
        .pipe(sourcemaps.write('./'))
        .pipe(minify())
        .pipe(gulp.dest('./stylesheet/'));
});


gulp.task ('watch', function() {
    gulp.watch('stylesheet/less/vendor/bootstrap/**/*.less', ['bootstrap']);
    gulp.watch('stylesheet/less/custom/**/*.less', ['custom']);
})



gulp.task ('default', ['bootstrap', 'custom', 'watch']);