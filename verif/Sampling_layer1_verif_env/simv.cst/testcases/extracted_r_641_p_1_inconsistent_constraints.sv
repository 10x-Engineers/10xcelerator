class c_641_1;
    integer i = -105;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_641_1;
    c_641_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzz0x0x0xxxxz1000xxx1xzxzxx0zxzxzxzxzzzxxxxxxxzzxxzxzxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
