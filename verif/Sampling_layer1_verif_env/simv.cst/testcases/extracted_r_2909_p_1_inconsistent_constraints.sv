class c_2909_1;
    integer i = -483;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_2909_1;
    c_2909_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx01x1zz1z1z1xx00000xzzx0z0z01zxxzxzxzzxxzxxxzzzzxzzzzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
