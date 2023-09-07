class c_1924_1;
    integer i = -319;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1924_1;
    c_1924_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx01xzxz1x11x00x0xx101z0x0z0xx0zzzxzxzxxxzzzzxxxzxzxzxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
