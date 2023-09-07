class c_174_1;
    integer i = -27;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_174_1;
    c_174_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x0z1xzz1x0zxx1zzzx1x0111000z10xxzxxzzxxxzxxxzzzzxxzzxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
