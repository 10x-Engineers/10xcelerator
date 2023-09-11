class c_459_1;
    integer i = -75;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_459_1;
    c_459_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0100zx01x1110100xxx1z1z01100x1xxxxxxzxxxzzxxzxzxzzzzxzzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
