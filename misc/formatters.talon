#provide both anchored and unachored commands via 'over'
(phrase) <user.text>$: 
  result = user.formatted_text(text, "NOOP")
  insert(result)
(phrase) <user.text> over: 
  result100 = user.formatted_text(text, "NOOP")
  insert(result)
<user.format_text>+$: user.insert_many(format_text_list)
<user.format_text>+ over: user.insert_many(format_text_list)
<user.formatters> that: user.formatters_reformat_selection(user.formatters)
word <user.word>: user.insert_formatted(user.word, "NOOP")
format help | help format: user.formatters_help_toggle()
recent list: user.toggle_phrase_history()
recent repeat <number_small>: insert(user.get_recent_phrase(number_small))
recent copy <number_small>: clip.set_text(user.get_recent_phrase(number_small))
select that: user.select_last_phrase()
before that: user.before_last_phrase()
nope that | scratch that: user.clear_last_phrase()
nope that was <user.formatters>: user.formatters_reformat_last(formatters)
