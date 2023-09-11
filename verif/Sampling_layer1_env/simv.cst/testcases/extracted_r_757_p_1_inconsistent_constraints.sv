class c_757_1;
    integer i = -125;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_757_1;
    c_757_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz1x1z1z1x0zz0x00xx1x000xxxxz1zzzxzxxxxxxzxzzzzzxxzzzzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
