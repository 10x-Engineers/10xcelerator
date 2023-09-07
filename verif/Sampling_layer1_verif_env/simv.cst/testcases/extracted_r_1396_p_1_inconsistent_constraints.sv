class c_1396_1;
    integer i = -231;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1396_1;
    c_1396_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0x0111zx1zz1x0zzz01zzzxz0x0zxxzzzxxxzxzxxzxzxzxxzxxxxxxzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
