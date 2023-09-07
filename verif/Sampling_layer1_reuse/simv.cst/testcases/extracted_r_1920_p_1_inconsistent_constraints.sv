class c_1920_1;
    integer i = -318;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1920_1;
    c_1920_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z000101xzx0x0zx0x10z1zz00x101x0zxzzzzzxxzzzxzzzzzxzxxzzzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
