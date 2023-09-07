class c_3076_1;
    integer i = -511;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3076_1;
    c_3076_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00zx1z0100z00z110zx0x0110z1xzxxzxzxzzzzxxxxxzxxxzxzzzxzzzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
