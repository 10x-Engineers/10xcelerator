class c_2886_1;
    integer i = -479;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2886_1;
    c_2886_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x00011xx01xx1xz010xzzxx1zz1x11xxzxxxxzxzxxxzxxxxxxxxxzxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
