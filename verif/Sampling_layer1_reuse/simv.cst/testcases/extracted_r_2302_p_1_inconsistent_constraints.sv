class c_2302_1;
    integer i = -382;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2302_1;
    c_2302_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z10z10xx0xx0x1xxzzzzx10zzzxzzxzxxzxxzxzxzxxzzxxxzzxzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
