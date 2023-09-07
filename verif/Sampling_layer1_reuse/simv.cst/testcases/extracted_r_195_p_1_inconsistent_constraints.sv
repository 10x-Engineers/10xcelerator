class c_195_1;
    integer i = -31;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_195_1;
    c_195_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011zx0zx1x0z1110zx10z001zz00011xzxxxzzzzxxxzzxxxxxzzzxzxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
