class c_1522_1;
    integer i = -252;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1522_1;
    c_1522_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z01xz110xxxx100x0zxx000z1x011xzzxxxxxzxzzzxzzzzzxzxzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
