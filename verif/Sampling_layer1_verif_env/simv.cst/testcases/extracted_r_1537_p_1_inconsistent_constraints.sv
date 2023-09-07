class c_1537_1;
    integer i = -255;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1537_1;
    c_1537_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zxxxx0z1010xxz0x00x00xx0x1z0xxzzxzxzxzxzxzzzzxxxxxxzxzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
