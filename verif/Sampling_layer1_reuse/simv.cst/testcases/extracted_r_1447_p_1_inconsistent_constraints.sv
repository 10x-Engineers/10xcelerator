class c_1447_1;
    integer i = -240;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1447_1;
    c_1447_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz1z0111x110z1001z0zz0z10xz1xz0xxxzzzxxzxxzzxxxzzzxxxzxzxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
