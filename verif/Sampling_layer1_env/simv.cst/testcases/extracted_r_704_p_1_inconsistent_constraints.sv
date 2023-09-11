class c_704_1;
    integer i = -116;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_704_1;
    c_704_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1xz1xxxxz0xxxz00x111x1z1zz1zxxzzzxzzxzxxzxzzzxzzxzzxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
