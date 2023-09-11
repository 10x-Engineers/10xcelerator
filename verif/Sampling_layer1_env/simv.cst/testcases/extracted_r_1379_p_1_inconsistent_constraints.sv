class c_1379_1;
    integer i = -228;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1379_1;
    c_1379_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zz1x0z1zz11xxxx100zz1101zxz1xzxzxzzxxzxzzxxxzxzzzxxxxzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram