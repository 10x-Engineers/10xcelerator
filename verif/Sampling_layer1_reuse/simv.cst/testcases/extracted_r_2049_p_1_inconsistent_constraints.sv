class c_2049_1;
    integer i = -340;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2049_1;
    c_2049_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xzz010z1xz1x0xzxz11z0zxxz1110zzzxxxzzxxxzxxzzzxzzxzzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
