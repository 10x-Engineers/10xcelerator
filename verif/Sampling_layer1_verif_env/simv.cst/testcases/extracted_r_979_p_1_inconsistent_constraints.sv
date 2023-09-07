class c_979_1;
    integer i = -162;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_979_1;
    c_979_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x010xzzxz0z1001z0z0101x1100z1xxzzzxzzzxxzxzzxxxxzxxzzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
