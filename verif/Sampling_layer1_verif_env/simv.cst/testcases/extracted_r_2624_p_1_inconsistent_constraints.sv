class c_2624_1;
    integer i = -436;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2624_1;
    c_2624_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0zzz0zx0101zzx111xzxzz10xz10zxzxzzzzzzzzxxxxzxzxxzxzzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
