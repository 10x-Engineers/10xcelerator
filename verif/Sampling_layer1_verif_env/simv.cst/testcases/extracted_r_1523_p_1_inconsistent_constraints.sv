class c_1523_1;
    integer i = -252;
    rand bit[15:0] tr_Input_Pixel; // rand_mode = ON 

    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (sequence.sv:17)
    {
       (tr_Input_Pixel == i);
    }
endclass

program p_1523_1;
    c_1523_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz10xz1xxx11z1xz00z0z11x0z100xxxxxzzxxxxxzzxzxzxzzxxxxzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
