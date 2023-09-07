class c_1118_1;
    integer i = -185;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1118_1;
    c_1118_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz10x01zx11xxz00110x0z0zz1zxz00xxxzzxxxzzzzxzxxxzxxzzxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
