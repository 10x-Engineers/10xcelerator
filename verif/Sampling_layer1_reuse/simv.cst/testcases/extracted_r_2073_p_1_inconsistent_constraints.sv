class c_2073_1;
    integer i = -344;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2073_1;
    c_2073_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz111xx010xz1xzx0011z100z0011zzzzzzxzzzzzxxxxxzxzzxzxxxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
