# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
    list = box_types.sort {|a,b| b[1] <=> a[1]}
    unit_cnt = 0
    list.each do |l|
        box_cnt = [truck_size, l[0]].min
        unit_cnt += box_cnt * l[1]
        truck_size -= box_cnt
        break if truck_size == 0
    end
    unit_cnt
end
