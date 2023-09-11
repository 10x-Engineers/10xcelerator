class c_264_1;
    integer i = -262;
    rand bit[15:0] tr_input_port; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_input_port == i);
    }
endclass

program p_264_1;
    c_264_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1x11101xxx1001zx0zx1xz0zzxzxxxzxxxxxxzzxxzxzzzzxxxxxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
