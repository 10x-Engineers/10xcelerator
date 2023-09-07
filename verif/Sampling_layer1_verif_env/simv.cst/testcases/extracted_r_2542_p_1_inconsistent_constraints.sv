class c_2542_1;
    integer i = -422;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2542_1;
    c_2542_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x11x10z100110xz1x1xxxzz00x010xzzzxzxxxxxxxxxxzxxxxzxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
