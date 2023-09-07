class c_870_1;
    integer i = -143;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_870_1;
    c_870_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01x1x1zz0zxzz10xzxxzxz0zxzzx0xzxzzzzxzzzxxzxzzxzzxzzzxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
