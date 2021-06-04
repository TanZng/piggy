let environment = {
  plugins: [
    require('tailwindcss'),
    require('autoprefixer'),
    require('postcss-import'),
    require('postcss-flexbugs-fixes'),
    require('postcss-preset-env')({
      autoprefixer: {
        flexbox: 'no-2009'
      },
      stage: 3
    })
  ]
}

// Only run PurgeCSS in production envrionment, you can also add other environment here
if (process.env.RAILS_ENV === "production") {
  environment.plugins.push(
      require('@fullhuman/postcss-purgecss')({
        content: [
          './app/**/*.html.erb',
          './app/helpers/**/*.rb',
          './app/javascript/**/*.js',
        ],
        defaultExtractor: content => content.match(/[A-Za-z0-9-_:/]+/g) || []
      })
  )
}

module.exports = environment