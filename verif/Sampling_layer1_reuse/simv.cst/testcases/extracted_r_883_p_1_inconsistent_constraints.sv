class c_883_1;
    integer i = -146;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_883_1;
    c_883_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x01zxz100x10z0z1010zxzx0z0z1xzxxxxzzzzxzxzxxzxxzzzzzxxxxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
