class c_1952_1;
    integer i = -324;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1952_1;
    c_1952_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111xz011z1zz0z010x00xxxz11x0001zzxxxzzxxzzxzxxzxzxzzzzzxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
