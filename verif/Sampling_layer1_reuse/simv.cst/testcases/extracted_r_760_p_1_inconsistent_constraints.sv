class c_760_1;
    integer i = -125;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_760_1;
    c_760_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzz0zx1x00z1x01zz10z0x110011zxxzzzxxzzzzzxxzzzzzzzzxxxxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
