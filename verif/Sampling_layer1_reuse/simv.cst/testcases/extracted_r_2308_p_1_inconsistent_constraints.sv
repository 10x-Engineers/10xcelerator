class c_2308_1;
    integer i = -383;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2308_1;
    c_2308_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x1zz101z0z0zx11xz1zxx0x101zxz1xzzzxzxzzzzzzzxzxxzxzzzxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
