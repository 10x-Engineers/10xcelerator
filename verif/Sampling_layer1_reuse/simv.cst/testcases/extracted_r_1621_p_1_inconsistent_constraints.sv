class c_1621_1;
    integer i = -269;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1621_1;
    c_1621_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzxxz000101x0z1x111xz0zz1z1x11xxxxzxzzzzxxxxzxzzxxxxzxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
