class c_2832_1;
    integer i = -470;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2832_1;
    c_2832_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz000xx111xz00xx10z1x0z000z0zz0xxzxzzzzxxxzzzzzxzxxxxxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
