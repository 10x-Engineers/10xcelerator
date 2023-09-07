class c_3369_1;
    integer i = -560;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_3369_1;
    c_3369_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xz10z1xx1011110z00x0zz1x1x100xxxxxxxzzxzxxxxxxzxxxzxxzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
