Pry.config.history.file = Rails.root + 'log/.pry_history'

# wrap ANSI codes so Readline knows where the prompt ends
def colour(name, text)
  if Pry.color
    "\001#{Pry::Helpers::Text.send name, '{text}'}\002".sub '{text}', "\002#{text}\001"
  else
    text
  end
end

def env
  env = Rails.env
  if env.production?
    colour :bright_red, env
  else
    colour :bright_black, env
  end
end

prompt = env

Pry.config.prompt = [
  proc { |obj, nest_level, _| "docker-rails - #{prompt}:#{nest_level} > " },
  proc { |obj, nest_level, _| "docker-rails - #{prompt}:#{nest_level} * " }
]

Pry.config.hooks.add_hook(:before_session, :show_ruby_version) do
  puts "Ruby #{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
end
