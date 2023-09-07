class c_465_1;
    integer i = -76;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_465_1;
    c_465_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1z0xx1x1x11x0z01x110z1zz11z100xzxxxxxzxxzzxzzzxzzzxxxzzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
