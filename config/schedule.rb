every :reboot do
    #'bin/delayed_job -n2 start'
    command 'bin/delayed_job -n2 start' 
end