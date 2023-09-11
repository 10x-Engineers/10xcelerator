class c_3131_1;
    integer i = -520;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3131_1;
    c_3131_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxx01zzzzzxz1x01x1xz0x0x00xx10zxzxxxxxzzxzxzzxxxxxxxxxxzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
