class c_894_1;
    integer i = -147;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_894_1;
    c_894_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzzx0x1z010x1zxz11xxz01zxxz00zzzxxxxxxxzxxzxxxzzzxzxxxzzxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
