# @param {Character[]} tasks
# @param {Integer} n
# @return {Integer}
def least_interval(tasks, n)
    p counts = get_counts_of_tasks(tasks)

    time = 0
    while counts[0] > 0
        i = 0
        while i <= n
            break if counts[0] == 0
            if i < counts.size && counts[i] > 0
                counts[i] -= 1
            end
            time += 1
            i += 1
        end
        counts.sort!{|a,b| -(a <=> b)}
    end
    time
end

def get_counts_of_tasks(tasks)
    counts = Hash.new(0)
    tasks.each{|task| counts[task] += 1}
    counts.values.sort {|x,y| -x <=> y}
end
    
