class c_2250_1;
    integer i = -373;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2250_1;
    c_2250_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10000z1000x0x0xzxzz0x0z0z011x1xxzzzzxzzxxzzzxxxzzxzzzzxzzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
