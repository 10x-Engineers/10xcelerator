class c_363_1;
    integer i = -59;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_363_1;
    c_363_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0zxzxzx010x1x0x0z00xz01x0x01xxxxxxzxzxxxxxzzzzxzxzxxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
