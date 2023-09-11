class c_2013_1;
    integer i = -334;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2013_1;
    c_2013_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010xz1x11zxz000xx1z10x0xxxzzxxzzzzzxxzxzzxxzxzxxxzxzxzxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram