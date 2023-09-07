class c_780_1;
    integer i = -128;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_780_1;
    c_780_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zxzx1xzx0010111x0x0101z1zzzzzzxxxxxxxzxzzxxxzzxxzzxzzxxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
