class c_1300_1;
    integer i = -215;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1300_1;
    c_1300_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxzz0100xzxxxzx00z0z1x1xzzxx10xzzzzxxzxxxxxzxzxzzzzxxxzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
