'use strict';

module.exports = function(grunt) {
  grunt.initConfig({
    exec: {
      tidy: 'find . -type d -name node_modules -prune -o -type f -name "*.html" \\( -exec tidy -qe {} \\; -o -print \\) 2>&1 | grep -v "canvas>" | grep -v "proprietary attribute"; true'
    }
  });

  grunt.loadNpmTasks('grunt-exec');

  grunt.registerTask('default', ['exec:tidy']);
  grunt.registerTask('lint', ['exec:tidy']);
  grunt.registerTask('tidy', ['exec:tidy']);
};
